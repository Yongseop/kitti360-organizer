# KITTI360 Organizer

## 제작 의도

- 다운로드한 KITTI Dataset zip 파일들을 적절한 디렉토리 구조로 적절화하기 위하여 만들었습니다.

## 사용 방법
1. 2TB 이상이 확보된 SSD로 이동하고, 해당 레포를 복제합니다.

    ~/Storage$ git clone https://github.com/Yongseop/kitti360-organizer

2. Nautilus (우분투 기본 탐색기) 등으로 NAS에 접속 가능한지 확인한 후, update.sh 파일을 수정하여 NAS IP 주소를 적습니다. pwd 명령 등을 활용하여 update.sh 파일을 수정합니다.

    #!/bin/bash

    rsync -ahrvP /run/user/1000/gvfs/smb-share:server=[NAS IP],share=kitti360/ .

3. update.sh 를 실행하여 NAS상 zip 파일들을 모두 복제합니다.

    ~/Storage$ ./update.sh

4. organize_~~ 파일들을 실행하여 압축을 해제합니다. zip 파일이 모두 모였다면 동시 실행하여도 무방합니다.

    ~/Storage$ organize_2d_confidence.sh
   
    ~/Storage$ organize_2d_fisheye.sh
   
    ...
   
    ~/Storage$ organize_etc.sh

6. https://www.cvlibs.net/datasets/kitti-360/documentation.php 와 수집된 디렉토리의 구조/내용이 일치하는지 확인합니다.

7. https://github.com/Yongseop/kitti360_ros_player 로 결과를 검증합니다.

8. 필요한 zip파일 목록 및 용량은 [files.txt](https://github.com/Yongseop/kitti360-organizer/blob/main/files.txt)  에서 확인하실 수 있습니다.

문의: 정용섭
