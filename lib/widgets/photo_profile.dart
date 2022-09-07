import 'dart:io';
import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  final String? pathImageNetwork;
  final File? imageFile;
  final IconData? icon;
  double? percentSize;

  final void Function()? onPressedIcon;
  PhotoProfile({Key? key, 
  this.pathImageNetwork, 
  this.icon, 
  this.onPressedIcon, 
  this.imageFile,
  this.percentSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //El renderizado de la foto depende de que parametros se le envíen.
    //Cuando no se le envía ni el imageFile ni el pathImageNetwork, entonces mostrará un assets, el cual es una foto indicando que no hay foto de perfil.
    //El imageFile tiene más prioridad que el ImageNetwork, es decir que si se le envían los dos, mostrará el imageFile y no el imageNetwork,
    //En caso de que solo se envíe alguno de los dos, renderizará dicha imagen
    return Stack(
      children: [
        CircleAvatar(
          radius: percentSize == null ? size.width * 0.15 : size.width * percentSize!,
          backgroundColor: Colors.grey,
          backgroundImage:  pathImageNetwork == null && imageFile == null
          ? Image.asset('assets/no_photo.png').image //Leer lo de arriba
          : imageFile == null 
          ? Image.network(
              pathImageNetwork!,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress){
                if(loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              errorBuilder: (context, _, __){
                return const Icon(Icons.error_outline);
              },
            ).image
          : Image.file(imageFile!).image,
        ),
        if(icon != null && onPressedIcon != null)
        Positioned(
          bottom: 0,
          right: size.width * 0,
          child: Container(
            width: size.width * (percentSize!/2),
            height: size.width * (percentSize!/2),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 11, 182, 142),
              borderRadius: BorderRadius.circular(100)
            ),
            child: IconButton(
              iconSize: size.width * (percentSize!/4),
              icon: Icon(icon!, color: Colors.white),
              onPressed: (){
                onPressedIcon!();
                
              }, 
            ),
          ),
        ),
      ],
    );
  }
}
