﻿Describe 'Enable-SpanningUserList Tests' {

   Context 'Parameters for Enable-SpanningUserList'{

        It 'Has a Parameter called AuthInfo' {
            $Function.Parameters.Keys.Contains('AuthInfo') | Should -Be 'True'
            }
        It 'AuthInfo Parameter is Identified as Mandatory being False' {
            [String]$Function.Parameters.AuthInfo.Attributes.Mandatory | Should -Be 'False'
            }
        It 'AuthInfo Parameter is of Object Type' {
            $Function.Parameters.AuthInfo.ParameterType.FullName | Should -Be 'System.Object'
            }
        It 'AuthInfo Parameter is member of ParameterSets' {
            [String]$Function.Parameters.AuthInfo.ParameterSets.Keys | Should -Be '__AllParameterSets'
            }
        It 'AuthInfo Parameter Position is defined correctly' {
            [String]$Function.Parameters.AuthInfo.Attributes.Position | Should -Be '0'
            }
        It 'Does AuthInfo Parameter Accept Pipeline Input?' {
            [String]$Function.Parameters.AuthInfo.Attributes.ValueFromPipeline | Should -Be 'True'
            }
        It 'Does AuthInfo Parameter Accept Pipeline Input by PropertyName?' {
            [String]$Function.Parameters.AuthInfo.Attributes.ValueFromPipelineByPropertyName | Should -Be 'True'
            }
        It 'Does AuthInfo Parameter use advanced parameter Validation? ' {
            $Function.Parameters.AuthInfo.Attributes.TypeID.Name -contains 'ValidateNotNullOrEmptyAttribute' | Should -Be 'False'
            $Function.Parameters.AuthInfo.Attributes.TypeID.Name -contains 'ValidateNotNullAttribute' | Should -Be 'False'
            $Function.Parameters.AuthInfo.Attributes.TypeID.Name -contains 'ValidateScript' | Should -Be 'False'
            $Function.Parameters.AuthInfo.Attributes.TypeID.Name -contains 'ValidateRangeAttribute' | Should -Be 'False'
            $Function.Parameters.AuthInfo.Attributes.TypeID.Name -contains 'ValidatePatternAttribute' | Should -Be 'False'
            }
        It 'Has Parameter Help Text for AuthInfo '{
            $function.Definition.Contains('.PARAMETER AuthInfo') | Should -Be 'True'
            }
        It 'Has a Parameter called UserPrincipalNames' {
            $Function.Parameters.Keys.Contains('UserPrincipalNames') | Should -Be 'True'
            }
        It 'UserPrincipalNames Parameter is Identified as Mandatory being True' {
            [String]$Function.Parameters.UserPrincipalNames.Attributes.Mandatory | Should -Be 'True'
            }
        It 'UserPrincipalNames Parameter is of String[] Type' {
            $Function.Parameters.UserPrincipalNames.ParameterType.FullName | Should -Be 'System.String[]'
            }
        It 'UserPrincipalNames Parameter is member of ParameterSets' {
            [String]$Function.Parameters.UserPrincipalNames.ParameterSets.Keys | Should -Be '__AllParameterSets'
            }
        It 'UserPrincipalNames Parameter Position is defined correctly' {
            [String]$Function.Parameters.UserPrincipalNames.Attributes.Position | Should -Be '1'
            }
        It 'Does UserPrincipalNames Parameter Accept Pipeline Input?' {
            [String]$Function.Parameters.UserPrincipalNames.Attributes.ValueFromPipeline | Should -Be 'True'
            }
        It 'Does UserPrincipalNames Parameter Accept Pipeline Input by PropertyName?' {
            [String]$Function.Parameters.UserPrincipalNames.Attributes.ValueFromPipelineByPropertyName | Should -Be 'True'
            }
        It 'Does UserPrincipalNames Parameter use advanced parameter Validation? ' {
            $Function.Parameters.UserPrincipalNames.Attributes.TypeID.Name -contains 'ValidateNotNullOrEmptyAttribute' | Should -Be 'False'
            $Function.Parameters.UserPrincipalNames.Attributes.TypeID.Name -contains 'ValidateNotNullAttribute' | Should -Be 'False'
            $Function.Parameters.UserPrincipalNames.Attributes.TypeID.Name -contains 'ValidateScript' | Should -Be 'False'
            $Function.Parameters.UserPrincipalNames.Attributes.TypeID.Name -contains 'ValidateRangeAttribute' | Should -Be 'False'
            $Function.Parameters.UserPrincipalNames.Attributes.TypeID.Name -contains 'ValidatePatternAttribute' | Should -Be 'False'
            $Function.Parameters.UserPrincipalNames.Attributes.TypeID.Name -contains 'ValidateCountAttribute' | Should -Be 'True'
            }
        It 'Has Parameter Help Text for UserPrincipalNames '{
            $function.Definition.Contains('.PARAMETER UserPrincipalNames') | Should -Be 'True'
            }
    }
    Context "Function $($function.Name) - Help Section" {

            It "Function $($function.Name) Has show-help comment block" {

                $function.Definition.Contains('<#') | Should -Be 'True'
                $function.Definition.Contains('#>') | Should -Be 'True'
            }

            It "Function $($function.Name) Has show-help comment block has a.SYNOPSIS" {

                $function.Definition.Contains('.SYNOPSIS') -or $function.Definition.Contains('.Synopsis') | Should -Be 'True'

            }

            It "Function $($function.Name) Has show-help comment block has an example" {

                $function.Definition.Contains('.EXAMPLE') | Should -Be 'True'
            }

            It "Function $($function.Name) Is an advanced function" {

                $function.CmdletBinding | Should -Be 'True'
                $function.Definition.Contains('param') -or  $function.Definition.Contains('Param') | Should -Be 'True'
            }
    }

 }


