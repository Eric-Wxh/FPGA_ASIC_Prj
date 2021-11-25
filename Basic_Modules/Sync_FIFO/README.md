# Sychronized FIFO
## Version 1
File name: fifo_sync0.v

Description: 

    写入：在写使能信号有效时，每到来一个时钟上升沿写入一个数据，写指针指向下一个要写入的数据的地址;
    读出：在读使能信号有效时，每到来一个时钟上升沿读出一个数据，读指针指向下一个要读出的数据的地址;
    设有一个计数器，记录FIFO已使用的地址数，用于控制满指示fifo_full和空指示fifo_empty信号;
    当存储地址已满时写入数据，fifo_wr_err会进行报错指示，且不写入当前数据;当存储地址为空时，读出数据，fifo_rd_err会进行报错指示，且fifo_rd_data维持上一读出数据.