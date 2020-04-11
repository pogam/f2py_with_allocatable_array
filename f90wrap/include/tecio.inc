INTERFACE 

INTEGER FUNCTION tecini111 (Title, &
 Variables, &
 FName, &
 ScratchDir, &
 FileType, &
 Debug, &
 VIsDouble)
  !MS$ATTRIBUTES STDCALL :: tecini111
  !MS$ATTRIBUTES REFERENCE :: Title,Variables,FName,ScratchDir
  !MS$ATTRIBUTES REFERENCE :: FileType,Debug,VIsDouble
  CHARACTER(LEN=*) Title
  CHARACTER(LEN=*) Variables
  CHARACTER(LEN=*) FName
  CHARACTER(LEN=*) ScratchDir
  INTEGER(4)       FileType
  INTEGER(4)       Debug
  INTEGER(4)       VIsDouble
END FUNCTION tecini111
  
INTEGER FUNCTION teczne111 (ZoneTitle, &
        ZoneType, &
        IMxOrNumPts, &
        JMxOrNumElements, &
        KMxOrNumFaces, &
        ICellMax, &
        JCellMax, &
        KCellMax, &
        SolutionTime, &
        StrandID, &
        ParentZone, &
        IsBlock, &
        NumFaceConnections, &
        FaceNeighborMode, &
        TotalNumFaceNodes, &
        NumConnectedBoundaryFaces, &
        TotalNumBoundaryConnections, &
        PassiveVarList, &
        ValueLocation, &
        ShareVarFromZone, &
        ShareConnectivityFromZone)
        !MS$ATTRIBUTES STDCALL :: teczne111
        !MS$ATTRIBUTES REFERENCE :: ZoneTitle,ZoneType,IMxOrNumPts
        !MS$ATTRIBUTES REFERENCE :: JMxOrNumElements,KMxOrNumFaces
        !MS$ATTRIBUTES REFERENCE :: ICellMax,JCellMax,KCellMax
        !MS$ATTRIBUTES REFERENCE :: SolutionTime,StrandID,ParentZone
        !MS$ATTRIBUTES REFERENCE :: IsBlock,PassiveVarList
        !MS$ATTRIBUTES REFERENCE :: NumFaceConnections,FaceNeighborMode
        !MS$ATTRIBUTES REFERENCE :: TotalNumFaceNodes
        !MS$ATTRIBUTES REFERENCE :: NumConnectedBoundaryFaces
        !MS$ATTRIBUTES REFERENCE :: TotalNumBoundaryConnections
        !MS$ATTRIBUTES REFERENCE :: ValueLocation,ShareVarFromZone
        !MS$ATTRIBUTES REFERENCE :: ShareConnectivityFromZone
        CHARACTER(LEN=*) ZoneTitle
        INTEGER(4)       ZoneType
        INTEGER(4)       IMxOrNumPts
        INTEGER(4)       JMxOrNumElements
        INTEGER(4)       KMxOrNumFaces
        INTEGER(4)       ICellMax
        INTEGER(4)       JCellMax
        INTEGER(4)       KCellMax
        REAL(8)          SolutionTime
        INTEGER(4)       StrandID
        INTEGER(4)       ParentZone
        INTEGER(4)       IsBlock
        INTEGER(4)       NumFaceConnections
        INTEGER(4)       FaceNeighborMode
        INTEGER(4)       TotalNumFaceNodes
        INTEGER(4)       NumConnectedBoundaryFaces
        INTEGER(4)       TotalNumBoundaryConnections
        INTEGER(4)       PassiveVarList(*)
        INTEGER(4)       ValueLocation(*)
        INTEGER(4)       ShareVarFromZone(*)
        INTEGER(4)       ShareConnectivityFromZone
      END FUNCTION teczne111

 
       INTEGER FUNCTION tecdat111(N, &
        FieldData, &
        IsDouble)
        !MS$ATTRIBUTES STDCALL :: tecdat111
        !MS$ATTRIBUTES REFERENCE :: N,FieldData,IsDouble
        INTEGER(4)  N
        REAL(4)     FieldData(*)
        INTEGER(4)  IsDouble
      END FUNCTION tecdat111


  INTEGER FUNCTION tecend111()
    !MS$ATTRIBUTES STDCALL :: tecend111
      END FUNCTION tecend111

  END INTERFACE
