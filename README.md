# omnetpp-toolbox

## What is omnetpp-toolbox ?

omnetpp-toolbox is a custom image designed to be used with distrobox or toolbox. It includes OMNet++ and its IDE.

## Using omnetpp-toolbox

We use the default boxkit image as an example to show you how to create a distrobox/toolbox container using a custom image.

If you use distrobox:

    distrobox create -i ghcr.io/gbrsni/omnetpp-toolbox -n boxkit
    distrobox enter boxkit

If you use toolbox:

    toolbox create -i ghcr.io/gbrsni/omnetpp-toolbox -c boxkit
    toolbox enter boxkit

Once you entered the container, start the IDE with

    omnetpp

**NOTE:**
- It is recommended to use the [Ptyxis](https://flathub.org/apps/app.devsuite.Ptyxis) terminal, which provides seamless integration with various podman/distrobox/toolbx containers. 

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/quickstart/quickstart-cosign/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/gbrsni/omnetpp-toolbox
