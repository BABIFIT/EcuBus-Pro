<div align="center">
  <a href="https://app.whyengineer.com">
    <img width="160" height="160" src="https://ecubus.oss-cn-chengdu.aliyuncs.com/img/logo256.png">
  </a>

  <h1>EcuBus-Pro</h1>

   <div style="margin:5px; display: flex; justify-content: center; align-items: center;gap:4px">
    <a href="https://github.com/ecubus/EcuBus-Pro/releases">
      <img src="https://github.com/ecubus/EcuBus-Pro/actions/workflows/build.yml/badge.svg" alt="github-ci" />
    </a>
    <a href="https://github.com/ecubus/EcuBus-Pro/releases">
      <img src="https://github.com/ecubus/EcuBus-Pro/actions/workflows/build-linux.yml/badge.svg" alt="github-ci" />
    </a>
    <a href="https://github.com/ecubus/EcuBus-Pro">
       <img src="https://img.shields.io/github/stars/ecubus/EcuBus-Pro"/>
    </a>
  </div>
  <b style="font-size:16px">A powerful automotive ECU development tool</b><br/>
  <i>Easy of use, Cross platform, Multi dongle, Powerful script ability, CLI support</i><br/>
  Document: <a href="https://app.whyengineer.com">https://app.whyengineer.com</a>
</div>

## Introduction

EcuBus-Pro is a free and open source alternative to `CAN-OE`, designed for automotive ECU development. Our tool offers:

* 🆓 Open source and free
* 🚀 Intuitive user interface
* 💻 Cross-platform compatibility
* 🔌 Multi-vendor USB dongle support (PEAK, Kvaser, ZLG, etc.)
* 📝 TypeScript-based scripting capabilities
* ⌨️ Comprehensive CLI support

### Key Features

See our [User Manual](./docs/um/concept.md) for detailed documentation.

#### Hardware Support

| Vendor | Supported Protocols |
|--------|-------------------|
| PEAK | CAN CAN-FD LIN |
| KVASER | CAN CAN-FD |
| ZLG | CAN CAN-FD |
| Toomoss | CAN CAN-FD (Coming Soon) |

#### Software Features

| Feature | Capabilities |
|---------|-------------|
| Platform Support | Windows (exe,portable) Linux (deb) |
| UDS | CAN/CAN-FD DoIP LIN |
| Scripting | see [script](./docs/um/script.md) |
| Database | LIN LDF (edit and export) |
| Graph | Signal Graph |

### Visual Overview

#### CAN
![base1](./docs/about/base1.gif)

#### UDS
![base1](./docs/about/uds.gif)

#### Graph Signal
![base1](./docs/about/graph.gif)

### Script Capabilities
Our script engine leverages `Node.js`, enabling you to:
- Use standard Node.js functions
- Access EcuBus-Pro's extensive API
- Automate testing and diagnostics

![base1](./docs/um/script1.gif)

### Command Line Interface
Streamline your workflow with CLI support for UDS sequences:
![base1](./docs/about/seq.png)

## Support this project

Support this project by [becoming a sponsor](./docs/about/sponsor). Your logo will show up here with a link to your website. 🙏

### Technical support

You can also consider sponsoring us to get extra technical support services. If you do, you can get access to the [ecubus/technical-support](https://github.com/ecubus/technical-support) repository, which has the following benefits:

- [X] Handling Issues with higher priority
- [X] One-to-one technical consulting service
- [X] Help to write addon code to access 0x27,0x29 dll functions

## Thanks

This project exists thanks to all the people who have contributed:

<a href="https://github.com/ecubus/EcuBus-Pro/graphs/contributors"><img src="https://opencollective.com/ecubus/contributors.svg?width=890&amp;button=false"></a>

Your contributions are always welcome! Please have a look at the [contribution guidelines](./.github/contributing.md) first.

Your logo will show up here.

## License
Apache-2.0

---

<script>
  import 'viewerjs/dist/viewer.css';
import Viewer from 'viewerjs';
import { onMounted,onUnmounted} from 'vue';
onMounted(() => {
  const images = document.querySelectorAll('img[alt="base1"]');
  
   const viewerContainer = document.createElement('div');
   //setup attribute id for viewerContainer
    viewerContainer.setAttribute('id', 'viewerContainer');


  viewerContainer.style.display = 'none';
  document.body.appendChild(viewerContainer);
  //css pointer
  images.forEach(img => img.style.cursor = 'pointer');
  images.forEach(img => viewerContainer.appendChild(img.cloneNode(true)));
  const viewer = new Viewer(viewerContainer, {
    inline: false,
    zoomRatio: 0.1,
  });
  images.forEach((img, index) => {
    img.addEventListener('click', () => {
      viewer.view(index);
    });
  });
});
onUnmounted(() => {
  const viewerContainer = document.getElementById('viewerContainer');
  if (viewerContainer) {
    viewerContainer.remove();
  }
});
</script>


