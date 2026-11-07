class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3226/magpie-cli-darwin-arm64"
      sha256 "12180df004fd65c7bed267ed5b056508464b5e5e88c6214a6e8f40b7b7740b68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3226/magpie-cli-darwin-amd64"
      sha256 "3e853c0bf2821277e7343d7ab94f6c3a4ad5f211e50f0963b64d521bf95d3a1a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3226/magpie-cli-linux-arm64"
      sha256 "78805bec192364fef3f7aaabbdb4069cb7d1c3bdbeee1dcd46da9ae31d6fca57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3226/magpie-cli-linux-amd64"
      sha256 "3757ad29013c628c54016952ce48b57b43e4289ee00fd6bfd406c793895ef421"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
