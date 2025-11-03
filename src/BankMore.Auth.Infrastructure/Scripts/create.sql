


CREATE TABLE Usuarios (
    Id CHAR(36) NOT NULL PRIMARY KEY DEFAULT (UUID()),  
    Nome VARCHAR(100) NOT NULL,                          
    Cpf VARCHAR(14) NOT NULL UNIQUE,                     
    Email VARCHAR(255) NOT NULL UNIQUE,                  
    SenhaHash VARCHAR(255) NOT NULL,                     
    Ativo TINYINT(1) NOT NULL DEFAULT 1,                
    CriadoEm DATETIME NOT NULL DEFAULT NOW()            
);




CREATE TABLE ContaCorrente (
    IdContaCorrente CHAR(36) NOT NULL PRIMARY KEY DEFAULT (UUID()),
    Numero INT NOT NULL UNIQUE,
    Nome VARCHAR(100) NOT NULL,
    Ativo TINYINT(1) NOT NULL DEFAULT 1,         
    Senha VARCHAR(255) NOT NULL,                 
    Salt VARCHAR(255) NOT NULL,                  
    Saldo DECIMAL(15,2) NOT NULL DEFAULT 0.00,   
    CriadoEm DATETIME NOT NULL DEFAULT NOW()     
);

CREATE TABLE Idempotencia (
    Chave_Idempotencia VARCHAR(100) NOT NULL PRIMARY KEY,  
    Requisicao VARCHAR(255)  NULL,                              
    Resultado VARCHAR(255)  NULL,                               
    CriadoEm DATETIME NOT NULL DEFAULT NOW()                
);

CREATE TABLE Movimento (
    IdMovimento CHAR(36) NOT NULL PRIMARY KEY DEFAULT (UUID()),  
    IdContaCorrente CHAR(36) NOT NULL,  
    Chave_Idempotencia VARCHAR(100) null,                          
    DataMovimento DATETIME NOT NULL DEFAULT NOW(),                
    TipoMovimento ENUM('C', 'D') NOT NULL,                        
    Valor DECIMAL(15,2) NOT NULL CHECK (Valor > 0),               
    CONSTRAINT FK_Movimento_ContaCorrente
        FOREIGN KEY (IdContaCorrente) REFERENCES ContaCorrente(IdContaCorrente)
);


CREATE TABLE Transferencia (
    IdTransferencia CHAR(36) NOT NULL PRIMARY KEY DEFAULT (UUID()),  
    IdContaCorrente_Origem CHAR(36) NOT NULL,                        
    IdContaCorrente_Destino CHAR(36) NOT NULL,                       
    DataMovimento DATETIME NOT NULL DEFAULT NOW(),                   
    Valor DECIMAL(15,2) NOT NULL CHECK (Valor > 0),                  
    
    CONSTRAINT FK_Transferencia_Origem
        FOREIGN KEY (IdContaCorrente_Origem) REFERENCES ContaCorrente(IdContaCorrente),
        
    CONSTRAINT FK_Transferencia_Destino
        FOREIGN KEY (IdContaCorrente_Destino) REFERENCES ContaCorrente(IdContaCorrente)
);