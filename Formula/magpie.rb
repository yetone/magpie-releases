class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4043/magpie-cli-darwin-arm64"
      sha256 "b8cdcfc65f291d37abbdb65e9ab15eb77a53209ab2368998922d72789e3df814"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4043/magpie-cli-darwin-amd64"
      sha256 "329d7f79dded476d6125f9e52878cdb5aa11050a937308236f8b6b81b2223122"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4043/magpie-cli-linux-arm64"
      sha256 "80d53c9f63fe0d2ee54b81ac2ac661ae57ff126a6cda0131f4d902d8d2368ae0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4043/magpie-cli-linux-amd64"
      sha256 "94e3e1383cb0a5d44b4225da028d9dd93a2b11319f3b1dfb82ad6e0a22ec117c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
