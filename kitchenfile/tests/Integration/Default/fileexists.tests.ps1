Describe 'checking File Exists' {

    it 'TestFile.txt should exist in C:\' {
        { Resolve-Path 'C:\TestFile.txt' -ErrorAction Stop } | should not Throw
    }

    it 'Contents should match ' {
        Get-Content 'C:\TestFile.txt' -ErrorAction Stop | should be 'PSCONFEU ROCKS!!!'
    }

    it 'AnotherTestFile.txt should exist in C:\' {
        { Resolve-Path 'C:\AnotherTestFile.txt' -ErrorAction Stop } | should not Throw
    }
}