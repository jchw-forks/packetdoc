#pragma.examples gameservice/server 0084
#pragma.parseAs GameserviceServerPacket
---
meta:
  id: gameservice_server_0084_whisper_data
  title: GameService Server Whisper Data
  encoding: ASCII
  endian: le
  imports:
    - ../../common/pstring

doc: |
  This packet relays incoming whisper messages.
  
  **See Also**:
  
  *   [GameService Server 0x0040 Message Data](/packets/gameservice/server/0040.ksy)
  
  *   GameService Client 0x0003 Send Message (TODO: Add link.)
  
  *   GameService Client 0x002A Send Whisper (TODO: Add link.)

seq:
  - id: unknown_a
    size: 1
    doc: |
      Possible subtype. Only witnessed $00 (sent whisper).
  - id: user_nickname
    type: pstring
  - id: chat_message
    type: pstring
