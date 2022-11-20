# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VthCli < Formula
  desc "Verathread CLI"
  homepage "https://azarc.io/"
  version "1.5.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.5.0/vth-cli-1.5.0-Darwin-x86_64.tar.gz"
      sha256 "7a28dd404a604c97c92cf428bf3bc40fb9ff2d3b4c9244bd38249019c7e54034"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.arm?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.5.0/vth-cli-1.5.0-Darwin-arm64.tar.gz"
      sha256 "ab3aea9e007bea0da3b53aa465b38f7b6f984354fede3a087184af688ec6da34"

      def install
        bin.install "vth2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.5.0/vth-cli-1.5.0-Linux-arm64.tar.gz"
      sha256 "2f2137eb4fb0388aaa590356b1bfe0e662271eb6457eeca4954852fcf05c8018"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.5.0/vth-cli-1.5.0-Linux-x86_64.tar.gz"
      sha256 "1a87dc124dd96c857400ab35c822f881b18a94081a228eeb4aa68f6426b9568b"

      def install
        bin.install "vth2"
      end
    end
  end

  test do
    system "#{bin}/vth2 version"
  end
end
