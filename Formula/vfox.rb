# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vfox < Formula
  desc "A cross-platform SDK version manager with a simple cli."
  homepage "https://github.com/version-fox/vfox"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/version-fox/vfox/releases/download/v0.3.3/vfox_0.3.3_macos_x86_64.tar.gz"
      sha256 "ebb97938fd7428c575eea6f32399f5388a6a05a4ea8e8ea4dc529acccf7076ea"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/version-fox/vfox/releases/download/v0.3.3/vfox_0.3.3_macos_aarch64.tar.gz"
      sha256 "f1d318a102481da32dc84e8fd1caef03602f1a5f3adfd6194da7ba213db3a4a8"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/version-fox/vfox/releases/download/v0.3.3/vfox_0.3.3_linux_x86_64.tar.gz"
      sha256 "d77da29bca4591a00ff0584767da6a428ce4188267e023f4d73dba2a8701a2e2"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/version-fox/vfox/releases/download/v0.3.3/vfox_0.3.3_linux_armv7.tar.gz"
      sha256 "a03f0a7e203afcd0e94932205f7253934c75a73db50348491ed16c634df8a83a"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/version-fox/vfox/releases/download/v0.3.3/vfox_0.3.3_linux_aarch64.tar.gz"
      sha256 "b28e89687150a3bb8798fbbe4484f9ef13018498076877bba0160a0b33e6921e"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
  end

  test do
    system "#{bin}/vfox version"
  end
end
