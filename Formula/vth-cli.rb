# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VthCli < Formula
  desc "Verathread CLI"
  homepage "https://azarc.io/"
  version "1.31.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.31.0/vth-cli-1.31.0-Darwin-arm64.tar.gz"
      sha256 "6da4b1a195479c3451eda9b57b9b648431610f715b21315140e4dff13e5b59c9"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.31.0/vth-cli-1.31.0-Darwin-x86_64.tar.gz"
      sha256 "e092936a864a66ee7bbe8f93562090b2d9c83141eeb706f65ef27f7926802fe8"

      def install
        bin.install "vth2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.31.0/vth-cli-1.31.0-Linux-arm64.tar.gz"
      sha256 "17a0eb4d99dba35316810a69fa316820f992c5131b32eac05a9e3b2771f33ce2"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.31.0/vth-cli-1.31.0-Linux-x86_64.tar.gz"
      sha256 "74e9a94d661a2eaa16519abde1ed7c9a38c66dc34eda39254b6b41de51a3a0b9"

      def install
        bin.install "vth2"
      end
    end
  end

  test do
    system "#{bin}/vth2 version"
  end
end
