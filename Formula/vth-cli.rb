# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VthCli < Formula
  desc "Verathread CLI"
  homepage "https://azarc.io/"
  version "1.16.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.16.0/vth-cli-1.16.0-Darwin-arm64.tar.gz"
      sha256 "9cf8be769873df3e868eaea3cffc032c807729e388b31a2a5045cd30516c6c96"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.16.0/vth-cli-1.16.0-Darwin-x86_64.tar.gz"
      sha256 "0676af8e32e80cf101663ab23b39037ccd5bc6a1a39fbb933ca216362cad0ce0"

      def install
        bin.install "vth2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.16.0/vth-cli-1.16.0-Linux-arm64.tar.gz"
      sha256 "48b9f52a85f8fee703221e65fdf4e491bc252eae1c1b317431ec95721bda4e72"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.16.0/vth-cli-1.16.0-Linux-x86_64.tar.gz"
      sha256 "b23f3f23d5c3182c0c8410a4c7dc0f786da4fae8c1aaa79fc271afcb7a499ab1"

      def install
        bin.install "vth2"
      end
    end
  end

  test do
    system "#{bin}/vth2 version"
  end
end
