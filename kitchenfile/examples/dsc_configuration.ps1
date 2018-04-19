Configuration Default {

    Import-DscResource -ModuleName PSDesiredStateConfiguration
    Node 'localhost' {

        File TestFile {
            Ensure = 'Present'
            DestinationPath = 'C:\TestFile.txt'
            Contents = 'PSCONFEU ROCKS!!!'
        }

        File TestFile2 {
            Ensure = 'Present'
            DestinationPath = 'C:\AnotherTestFile.txt'
            Contents = 'Come back in 2019!!!'
        }
    }
}