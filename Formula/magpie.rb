class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3202/magpie-cli-darwin-arm64"
      sha256 "d82c94924b3a5d29a1110f82933fd1ed703770a5b95f94b3b2062f256c3f2463"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3202/magpie-cli-darwin-amd64"
      sha256 "53f4501d567d9fce4d3aabf69df994803d21320e6d11b34010d998cb18d406e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3202/magpie-cli-linux-arm64"
      sha256 "23bdbac26691507c290a21b0c8e8356f750443a44017f651e91cfbb9f58eb8fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3202/magpie-cli-linux-amd64"
      sha256 "25946b031f1f9d07882e1d4641aff697728aa6529ca928dd305aa0b30d610504"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
