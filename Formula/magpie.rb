class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.133/magpie-cli-darwin-arm64"
      sha256 "9b8ab15c558686ffd03bdf3da3f2e09926e32fd5651d27de1f42fa1b68b16b24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.133/magpie-cli-darwin-amd64"
      sha256 "805a135eea7a62e59435679d7e963b092eae494efedba349c5df75b658fa997c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.133/magpie-cli-linux-arm64"
      sha256 "266023e70f78f2e4777d6196ae62b47add1043afefb551f76558a49e83ffd034"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.133/magpie-cli-linux-amd64"
      sha256 "dae9265ced72f9c34ae57e172e0e3e603d7b0ae360f96335d72ae197d15d9233"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
