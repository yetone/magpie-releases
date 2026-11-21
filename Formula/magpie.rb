class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4647/magpie-cli-darwin-arm64"
      sha256 "34e2378e1ba74d1ab9f6f997ee948b1ca2b9cee6dd33340d8fdb5edac024b02d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4647/magpie-cli-darwin-amd64"
      sha256 "437e5cb013cdb20dd7eb82b36a09eccf8876349a12dcb715a0a8a284bf6af508"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4647/magpie-cli-linux-arm64"
      sha256 "5b37231298edd8d1957dc820ea825e20d666e4a77216206febc8ba75b531fdca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4647/magpie-cli-linux-amd64"
      sha256 "c0ae1dcb900b8e8ec4050136e17db3ec35d63cd9cd73788f2207aedf5b828ae2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
