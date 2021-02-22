import 'package:flutter/material.dart';
import 'package:nubank_interface_clone/app/modules/home/home_controller.dart';
import 'package:nubank_interface_clone/app/modules/home/models/icon_model.dart';
import 'package:nubank_interface_clone/app/modules/home/widgets/body_card_widget.dart';

import 'widgets/action_button_widget.dart';
import 'widgets/bottom_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color secondaryColor = Color(0xFF9823C7);
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(height: 20.0),
            _buildBody(context),
            const SizedBox(height: 15.0),
            _buildBottomCardList(),
          ],
        ),
      )),
    );
  }

  Expanded _buildBody(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ValueListenableBuilder(
              valueListenable: controller.showContentNotifier,
              builder: (_, value, __) => BodyCardWidget(
                showbodyContent: value,
                icon: Icons.credit_card_outlined,
                title: 'Cartão de Crédito',
                bodyTitle: Text('Fatura atual'),
                bodyContent: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'R\$ 123,45',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text('Limite disponível'),
                        const SizedBox(width: 5.0),
                        Text(
                          'R\$ 123,45',
                          style: TextStyle(
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ValueListenableBuilder(
              valueListenable: controller.showContentNotifier,
              builder: (_, value, __) => BodyCardWidget(
                showbodyContent: value,
                icon: Icons.monetization_on_outlined,
                title: 'Conta',
                bodyTitle: Text('Saldo disponível'),
                bodyContent: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'R\$ 123,45',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BodyCardWidget(
              icon: Icons.ac_unit,
              iconColor: Theme.of(context).primaryColor,
              iconBackgroundColor: Color(0xFFE7CDF2),
              title: 'Pix',
              bodyTitle: Text(
                'Transfira usando o Pix',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              bodyContent: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pague e receba em tempo real, sem custo e para qualquer banco.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: secondaryColor,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: MaterialButton(
                      splashColor: Colors.transparent,
                      child: Text(
                        'COMEÇAR A USAR',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      textColor: Theme.of(context).primaryColor,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _buildBottomCardList() {
    return SizedBox(
      height: 110.0,
      child: ListView.builder(
        clipBehavior: Clip.none,
        shrinkWrap: true,
        itemCount: controller.allIcons.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final IconModel icon = IconModel.fromMap(controller.allIcons[index]);
          return BottomCardWidget(
            secondaryColor: secondaryColor,
            icon: icon,
          );
        },
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: [
        Text(
          'Olá, Bruno',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: const SizedBox.shrink(),
        ),
        ValueListenableBuilder(
          valueListenable: controller.showContentNotifier,
          builder: (_, value, __) => ActionButtonWidget(
            iconData: value
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            iconButtonBackgroundColor: secondaryColor,
            onPressed: controller.showHideContent,
          ),
        ),
        const SizedBox(width: 10.0),
        ActionButtonWidget(
          iconData: Icons.settings_outlined,
          iconButtonBackgroundColor: secondaryColor,
        ),
      ],
    );
  }
}
