#include <stdio.h>
#include <wiringPi.h>
#include <wiringSerial.h>

#define BNO055_PAGE_ID_ADDR			0X07
#define BNO055_OPR_MODE_ADDR		0X3D
#define OPERATION_MODE_CONFIG		0X00
#define BNO055_SYS_TRIGGER_ADDR		0X3F
#define BNO055_PWR_MODE_ADDR		0X3E
#define POWER_MODE_NORMAL			0X00
#define OPERATION_MODE_NDOF			0X0C
#define BNO055_EULER_H_LSB_ADDR		0X1A

struct orientacio
{
	float pich;
	float roll;
	float yaw;
};

void begin( int fd);
void _write_byte (int fd, char add, char val);
orientacio read_euler(int fd);

int main()
{
	wiringPiSetupSys() ;
	printf("Starting serial port\n");
	int fd ;
	//Conectem amb la bno
	if ((fd = serialOpen ("/dev/ttyAMA0", 115200)) < 0)
	{
		printf ("Unable to open port\n") ;
		return -1 ;
	}
	if (wiringPiSetup () == -1)
	{
		printf ("Unable to start wiringPi\n") ;
		return 2 ;
	}
	serialFlush (fd) ;
	begin(fd);
	read_euler(fd);
}


void begin( int fd)
{
	_write_byte(fd, BNO055_PAGE_ID_ADDR, 0);
	_write_byte(fd, BNO055_OPR_MODE_ADDR, OPERATION_MODE_CONFIG);
	delay(30);
	_write_byte(fd, BNO055_PAGE_ID_ADDR, 0);
	_write_byte(fd, BNO055_SYS_TRIGGER_ADDR, 0x20);
	delay(650);
	_write_byte(fd, BNO055_PWR_MODE_ADDR, POWER_MODE_NORMAL);
	_write_byte(fd, BNO055_SYS_TRIGGER_ADDR, 0x0);
	_write_byte(fd, BNO055_OPR_MODE_ADDR, OPERATION_MODE_NDOF);
	delay(30);
	
}
        
void _write_byte (int fd, char add, char val)
{	
	char cmd[5];
	cmd[0]=0xAA;
	cmd[1]=0x00;
	cmd[2]=add;
	cmd[3]=1;
	cmd[4]=val;
	serialFlush (fd) ;
	for(int i=0; i<5; i++) 	serialPutchar (fd, cmd[i] ) ;
}

orientacio read_euler(int fd)
{
	char resp[2];
	char cmd[5];
	cmd[0]=0xAA;
	cmd[1]=0x01;
	cmd[2]=BNO055_EULER_H_LSB_ADDR;
	cmd[3]=0x06;
	cmd[3]='\0';
	serialFlush (fd) ;
	serialPuts (fd, cmd ) ;
	resp[0]=serialGetchar (fd); 
	resp[1]=serialGetchar (fd); 
	
	printf("char1: %d , char2: %d \n",int(resp[0]), int(resp[1]));
}

def read_euler(self):
        heading, roll, pitch = self._read_vector(BNO055_EULER_H_LSB_ADDR)
        return (heading/16.0, roll/16.0, pitch/16.0)

def _read_vector(self, address, count=3):
        data = self._read_bytes(address, count*2)
        result = [0]*count
        for i in range(count):
            result[i] = ((data[i*2+1] << 8) | data[i*2]) & 0xFFFF
            if result[i] > 32767:
                result[i] -= 65536
        return result

def _read_bytes(self, address, length):
        # Read a number of unsigned byte values starting from the provided address.
            # Build and send serial register read command.
            command = bytearray(4)
            command[0] = 0xAA  # Start byte
            command[1] = 0x01  # Read
            command[2] = address & 0xFF
            command[3] = length & 0xFF
            resp = self._serial_send(command)
            # Verify register read succeeded.
            if resp[0] != 0xBB:
                 raise RuntimeError('Register read error: 0x{0}'.format(binascii.hexlify(resp)))
            # Read the returned bytes.
            length = resp[1]
            resp = bytearray(self._serial.read(length))
            logger.debug('Received: 0x{0}'.format(binascii.hexlify(resp)))
            if resp is None or len(resp) != length:
                raise RuntimeError('Timeout waiting to read data, is the BNO055 connected?')
            return resp

def _serial_send(self, command, ack=True, max_attempts=5):
        # Send a serial command and automatically handle if it needs to be resent
        # because of a bus error.  If ack is True then an ackowledgement is
        # expected and only up to the maximum specified attempts will be made
        # to get a good acknowledgement (default is 5).  If ack is False then
        # no acknowledgement is expected (like when resetting the device).
        attempts = 0
        while True:
            # Flush any pending received data to get into a clean state.
            self._serial.flushInput()
            # Send the data.
            self._serial.write(command)
            logger.debug('Serial send: 0x{0}'.format(binascii.hexlify(command)))
            # Stop if no acknowledgment is expected.
            if not ack:
                return
            # Read acknowledgement response (2 bytes).
            resp = bytearray(self._serial.read(2))
            logger.debug('Serial receive: 0x{0}'.format(binascii.hexlify(resp)))
            if resp is None or len(resp) != 2:
                raise RuntimeError('Timeout waiting for serial acknowledge, is the BNO055 connected?')
            # Stop if there's no bus error (0xEE07 response) and return response bytes.
            if not (resp[0] == 0xEE and resp[1] == 0x07):
                return resp
            # Else there was a bus error so resend, as recommended in UART app
            # note at:
            #   http://ae-bst.resource.bosch.com/media/products/dokumente/bno055/BST-BNO055-AN012-00.pdf
            attempts += 1
            if attempts >=  max_attempts:
                raise RuntimeError('Exceeded maximum attempts to acknowledge serial command without bus error!')

/*
def read_euler(self):
        heading, roll, pitch = self._read_vector(BNO055_EULER_H_LSB_ADDR)
        return (heading/16.0, roll/16.0, pitch/16.0)
        
def _read_vector(self, address, count=3):
        data = self._read_bytes(address, count*2)
        result = [0]*count
        for i in range(count):
            result[i] = ((data[i*2+1] << 8) | data[i*2]) & 0xFFFF
            if result[i] > 32767:
                result[i] -= 65536
        return result
      
def _read_bytes(self, address, length):

            # Build and send serial register read command.
            command = bytearray(4)
            command[0] = 0xAA  # Start byte
            command[1] = 0x01  # Read
            command[2] = address & 0xFF
            command[3] = length & 0xFF
            resp = self._serial_send(command)
            # Verify register read succeeded.
            if resp[0] != 0xBB:
                 raise RuntimeError('Register read error: 0x{0}'.format(binascii.hexlify(resp)))
            # Read the returned bytes.
            length = resp[1]
            resp = bytearray(self._serial.read(length))
            int serialGetchar (int fd) ;
            
            logger.debug('Received: 0x{0}'.format(binascii.hexlify(resp)))
            if resp is None or len(resp) != length:
                raise RuntimeError('Timeout waiting to read data, is the BNO055 connected?')
            return resp
*/
