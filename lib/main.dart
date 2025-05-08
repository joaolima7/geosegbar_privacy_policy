import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PrivacyPolicyPage(),
    );
  }
}

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Política de Privacidade'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Política de Privacidade – BarragensGeo',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Text(
                  'Última atualização: 07/05/2025',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 20),
                SectionTitle('1. Coleta de Informações'),
                SectionBody(
                  'O aplicativo coleta dados pessoais básicos dos usuários, incluindo, mas não se limitando a:\n'
                  '• Nome completo;\n'
                  '• Endereço de e-mail;\n'
                  '• Número de telefone;\n'
                  '• Gênero.\n\n'
                  'Essas informações são essenciais para a identificação, autenticação e comunicação dos funcionários, além do registro de atividades do sistema.',
                ),
                SectionTitle('2. Uso de Informações'),
                SectionBody(
                  'Os dados coletados são utilizados para:\n'
                  '• Gerenciar o acesso e a autenticação dos funcionários no sistema;\n'
                  '• Facilitar a comunicação e o suporte interno;\n'
                  '• Monitorar e registrar as operações do aplicativo, garantindo a segurança das barragens e a integridade dos dados.',
                ),
                SectionTitle('3. Compartilhamento de Informações'),
                SectionBody(
                  'As informações dos usuários poderão ser compartilhadas:\n'
                  '• Internamente, entre setores e equipes autorizadas da empresa, com o único objetivo de melhorar a gestão e a segurança das operações;\n'
                  '• Com parceiros de tecnologia ou serviços, exclusivamente se necessário para a manutenção ou atualização do sistema, sempre mediante contratos que garantam a proteção dos dados.',
                ),
                SectionTitle('4. Segurança'),
                SectionBody(
                  'Implementamos medidas técnicas e administrativas compatíveis com os melhores padrões do mercado para proteger as informações dos usuários contra acesso não autorizado, alteração, divulgação ou destruição. Entre essas medidas estão:\n'
                  '• Controles de acesso e autenticação;\n'
                  '• Criptografia dos dados armazenados e transmitidos;\n'
                  '• Monitoramento contínuo e atualizações de segurança.',
                ),
                SectionTitle('5. Links Externos'),
                SectionBody(
                  'O aplicativo pode conter links ou referências a serviços e recursos externos. Ressaltamos que não temos responsabilidade sobre as práticas de privacidade ou o conteúdo desses sites, sendo recomendada a leitura das respectivas políticas de privacidade antes de fornecer qualquer informação pessoal.',
                ),
                SectionTitle('6. Proteção de Dados de Menores'),
                SectionBody(
                  'O aplicativo não se destina à coleta de informações de menores de idade. Caso seja identificado qualquer dado de usuários menores de 18 anos sem a devida autorização, as medidas necessárias serão adotadas para a remoção imediata das informações.',
                ),
                SectionTitle('7. Alterações na Política de Privacidade'),
                SectionBody(
                  'Esta política poderá ser atualizada periodicamente para refletir mudanças na legislação ou melhorias em nossos processos internos. A data da última atualização constará no início deste documento, e os usuários serão informados sobre quaisquer alterações relevantes.',
                ),
                SectionTitle('8. Contato'),
                SectionBody(
                  'Para dúvidas, sugestões ou solicitações relacionadas a esta Política de Privacidade, os usuários podem entrar em contato através do e-mail:\n'
                  'joaocaetanodev@gmail.com.',
                ),
                SizedBox(height: 16),
                Text(
                  'Ao utilizar este aplicativo, o usuário concorda com os termos desta Política de Privacidade e autoriza o tratamento dos seus dados conforme descrito.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 6),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class SectionBody extends StatelessWidget {
  final String text;
  const SectionBody(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, height: 1.5),
      textAlign: TextAlign.justify,
    );
  }
}
