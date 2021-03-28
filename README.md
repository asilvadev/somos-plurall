<div align="center"><img src="https://escolasaojose.files.wordpress.com/2020/05/plurall-download-plurall-logo.png" title="trello" alt="somos-plurall"  />

![GitHub](https://img.shields.io/github/license/asilvadev/QA-automacao-RockLov?style=flat-square)
![Made](https://img.shields.io/badge/Made_with-Coffee-red?logo=coffeescript&style=flat-square)
<br/>
<br/>
<a href="https://www.linkedin.com/in/asilvadev/">
<img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" height="25"/>
</a>

</div>
<br/>

## 👨🏽‍💻 Technologies

<p align="left">
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/85ec92b476b9e9ef1d1e18cb42f894b6124cee88/icons/ruby.svg" title="ruby" alt="ruby" width="25" height="25" />
<br/>
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/85ec92b476b9e9ef1d1e18cb42f894b6124cee88/icons/cucumber.svg" title="cucumber" alt="cucumber" width="25" height="25" />
<img src="https://avatars.githubusercontent.com/u/983927?s=200&v=4" title="selenium" alt="selenium" width="24" height="24" />
<img src="https://img.stackshare.io/service/2595/capybara.png" title="capybara" alt="capybara" width="24" height="24" />

<br/>

<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/85ec92b476b9e9ef1d1e18cb42f894b6124cee88/icons/gemfile.svg" title="gemfile" alt="gemfile" width="25" height="25" />
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/85ec92b476b9e9ef1d1e18cb42f894b6124cee88/icons/yaml.svg" title="yaml" alt="yaml" width="25" height="25" />
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/85ec92b476b9e9ef1d1e18cb42f894b6124cee88/icons/jenkins.svg" title="jenkins" alt="jenkins" width="25" height="25" />
</P>
<br/>

## ⚠️ Informações Importantes

```
Tenha certeza que possui o Ruby instalado em seu computador

Para verificar (via cmd)
ruby -v

Caso necessite:
https://rubyinstaller.org/downloads/
```

```
Por padrão os testes da *Automação Web* rodam via cucumber em chrome_headless
O projeto suporta outros tipos de navegadores
É possível altera-lo no arquivo cucumber.yml

https://github.com/mozilla/geckodriver
https://chromedriver.chromium.org/downloads
```

```
A API do sistema foi DESCONTINUADA, logo não foi usado HTTParty+Rspec para solucionar alguns casos.

INFO:
https://github.com/Khan/khan-api
```

```
⚠️ Atenção ⚠️

Para usar o jenkins é preciso dar 'build' no docker ruby-web-agent que se encontra na pasta infra
Usando sua conta pessoal do Docker

Altere o arquivo Jenkins
00rion/ruby-web-agent → seu_usuario/ruby-web-agent
```

# Automação Web

## 🛠️ Steps

```
Ruby + Cucumber + Capybara + AllureFramework

git clone https://github.com/asilvadev/somos-plurall.git

cd somos-plurall
bundle install
cucumber
```

## 📷 Screenshots

```
↓ Cucumber output via terminal ↓
```

![cucumber-web](_/plurall.png)

```
Para visualizar o report no Allure execute no terminal
allure serve logs/

↓ Allure report output via terminal ↓
```

![allure-web](_/allure-plurall.gif)

@asilvadev
