class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2255/magpie-cli-darwin-arm64"
      sha256 "3403f3a6fe5b93b6be5c4699d776158a884d4e3d07d8ff7af5b04d2a4def2284"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2255/magpie-cli-darwin-amd64"
      sha256 "5fc37b3aadfc31d47bc919f4354549b2f24238a85d698877f69bddd2a390707d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2255/magpie-cli-linux-arm64"
      sha256 "1a3546fb78678fb49476829208e3c745f415bb5ab5f01f7ed84a56bd394fa611"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2255/magpie-cli-linux-amd64"
      sha256 "a165ae1ccb41989f90216a263e0617b555d108937e397f88c4b22b1397a1e40d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
