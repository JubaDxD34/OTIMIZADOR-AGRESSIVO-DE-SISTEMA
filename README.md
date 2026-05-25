# OTIMIZADOR-AGRESSIVO-DE-SISTEMA #
# 💡 Sobre o Projeto

Criei esse script em `.bat` porque comecei a receber muitas máquinas antigas com Windows 10 e 11 para manutenção. Em vários casos, apenas comandos básicos de limpeza, reparo e otimização já conseguem dar uma nova vida para o computador.

Existem diversos programas de otimização na internet que são muito bons, porém normalmente possuem muitas opções escondidas, menus complicados ou funções espalhadas, o que acaba fazendo perder muito tempo procurando tudo aquilo que realmente importa durante uma manutenção rápida.

Então a ideia desse projeto foi reunir em um único script as funções que considero mais úteis e eficientes no dia a dia técnico, focando principalmente em:

* Limpeza de arquivos inúteis
* Reparação do Windows
* Liberação de memória e processos
* Correção de cache e serviços
* Otimização básica de desempenho
* Automação de tarefas repetitivas

O objetivo não é “milagre” ou promessas falsas de ganho absurdo de FPS/desempenho, mas sim automatizar procedimentos que realmente ajudam máquinas mais antigas a ficarem mais leves, estáveis e utilizáveis novamente.

````md id="k1j7ws"
# 🚀 OTIMIZADOR JUBA

Script `.bat` criado para realizar uma limpeza e otimização agressiva do Windows de forma automática.

Ideal para:
- 🛠️ Manutenção rápida
- 🧹 Remoção de arquivos inúteis
- ⚡ Correção básica do sistema
- 💽 Melhoria geral de desempenho

Principalmente em computadores antigos com Windows 10 e 11.

---

# ⚡ Funções do Script

O **OTIMIZADOR JUBA** reúne várias funções úteis de manutenção, limpeza e otimização do Windows em um único script automatizado.

---

# 🧹 Limpeza de Arquivos Temporários

Remove arquivos temporários do usuário e do Windows:

```bat
%temp%
C:\Windows\Temp
```

### ✅ Benefícios
- Libera espaço em disco
- Remove lixo acumulado
- Pode melhorar a resposta do sistema

---

# ♻️ Limpeza de Prefetch e Lixeira

Remove:
- Cache de Prefetch
- Arquivos da Lixeira do sistema

### ✅ Benefícios
- Remove arquivos desnecessários
- Ajuda em sistemas antigos
- Pode reduzir lentidão em HDs

---

# 🌐 Limpeza de Cache DNS

Executa:

```bat
ipconfig /flushdns
```

### ✅ Benefícios
- Atualiza cache de rede
- Resolve alguns problemas de conexão
- Corrige falhas de DNS

---

# 🔄 Reset do Windows Update

Reinicia os serviços do Windows Update e limpa downloads corrompidos:

- `wuauserv`
- `BITS`

### ✅ Benefícios
- Corrige falhas de atualização
- Remove updates travados
- Pode resolver erros do Windows Update

---

# 🛠️ Verificação e Reparação do Sistema

Executa:

```bat
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
```

### ✅ Benefícios
- Corrige arquivos corrompidos
- Repara componentes do Windows
- Melhora estabilidade do sistema

---

# ❌ Finalização de Processos Desnecessários

Encerra processos considerados pesados ou pouco úteis:

- OneDrive
- SearchUI
- RuntimeBroker
- YourPhone
- XboxApp

### ✅ Benefícios
- Libera memória RAM
- Reduz uso de CPU
- Melhora desempenho geral

---

# 📡 Desativação de Telemetria

Desativa serviços de coleta de dados do Windows:

- `DiagTrack`
- `dmwappushservice`

### ✅ Benefícios
- Reduz processos em segundo plano
- Diminui uso de disco
- Pode melhorar desempenho em PCs fracos

---

# ⚙️ Desativação do SysMain (Superfetch)

Desativa o serviço:

```bat
SysMain
```

### ✅ Benefícios
- Reduz uso excessivo de disco
- Ajuda PCs com HD mecânico
- Pode diminuir travamentos

---

# 🔋 Ativação do Plano Alto Desempenho

Ativa automaticamente o plano:

- Alto Desempenho

### ✅ Benefícios
- Prioriza performance
- Melhora resposta do sistema
- Evita economia agressiva de energia

---

# 🛡️ Verificação de Malware

Executa uma verificação rápida usando o Windows Defender:

```bat
MpCmdRun.exe -Scan -ScanType 1
```

### ✅ Benefícios
- Detecta ameaças básicas
- Procura arquivos suspeitos
- Ajuda na segurança do sistema

---

# 💽 Otimização de Disco

Executa:

```bat
defrag C: /O
```

### ✅ Benefícios
- Desfragmenta HDDs
- Executa TRIM em SSDs
- Otimiza armazenamento

---

# 🔍 Verificação de Disco

Executa:

```bat
chkdsk C: /f
```

### ✅ Benefícios
- Corrige erros simples no disco
- Verifica integridade do sistema
- Pode evitar falhas futuras

---

# ⚠️ Aviso

Este script realiza alterações "importantes" no sistema operacional...

## 🔴 Recomendações
- Executar como Administrador
- Criar ponto de restauração antes do uso
- Utilizar com cautela em PCs corporativos
- Ler o código antes da execução

---

# 📌 Objetivo

Projeto desenvolvido para:
- 📚 Estudos
- 🛠️ Automação de manutenção
- ⚡ Otimização básica do Windows
- 💽 Recuperação de desempenho em PCs antigos
- 🚀 Agilidade no dia a dia técnico
````
