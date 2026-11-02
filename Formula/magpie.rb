class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2724/magpie-cli-darwin-arm64"
      sha256 "6a0e0ff64ea397432c61421a183dada23d5597df405b3e68031bb776c0c09d7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2724/magpie-cli-darwin-amd64"
      sha256 "165f410179b582658c96544511241bcf65f28981151f74dedc627e01cc28534e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2724/magpie-cli-linux-arm64"
      sha256 "750ccf6df0b832c9220a60a4512a6f718e09de67831b184524acda4d2dbcf58d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2724/magpie-cli-linux-amd64"
      sha256 "1046c112e1c8d926d1982a9930ba0059ebc87142c51096314da708fa6a4c5639"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
