class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3845/magpie-cli-darwin-arm64"
      sha256 "4c661a9214cfd4a614dca695bc7adc7f84aa8700a1a53e163e241bb3f3069689"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3845/magpie-cli-darwin-amd64"
      sha256 "2581fc48014664797143eeb9025d2eceb83856d3760ec08fe50edd20c3e52952"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3845/magpie-cli-linux-arm64"
      sha256 "561df782cf484bc5da27d21c9fbe18b03261f0657078daed8b88f28d5c897137"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3845/magpie-cli-linux-amd64"
      sha256 "a1b90e5336c3200f4aa85060bb1fd8b7476e1dc26aef063a0c97291825b4d6a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
