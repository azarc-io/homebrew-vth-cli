# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VthCli < Formula
  desc "Verathread CLI"
  homepage "https://azarc.io/"
  version "1.60.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.60.0/vth-cli-1.60.0-Darwin-arm64.tar.gz"
      sha256 "f680d3f4064864aed3c6d6b78ba683d312f7a85614518a6e149f91290a145233"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.60.0/vth-cli-1.60.0-Darwin-x86_64.tar.gz"
      sha256 "87e837fee0979b914daf1391052dd85d6c8c4c2d215e052f9d02ba39712d2060"

      def install
        bin.install "vth2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.60.0/vth-cli-1.60.0-Linux-arm64.tar.gz"
      sha256 "138f780c1fa12c881979bfc0f81e05e74d3602b72b75f943f36488fa76a34a3d"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.60.0/vth-cli-1.60.0-Linux-x86_64.tar.gz"
      sha256 "87a0afaeb35203dea72a169e93036efa5f46e775f51ef0d09c8c828a88da440f"

      def install
        bin.install "vth2"
      end
    end
  end

  test do
    system "#{bin}/vth2 version"
  end
end
