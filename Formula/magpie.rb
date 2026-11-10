class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3490/magpie-cli-darwin-arm64"
      sha256 "eb3b8a22c5dcd75a8a503c09b0362bc1a480b641b44435860e33d3e88db75658"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3490/magpie-cli-darwin-amd64"
      sha256 "b2937e86dda27d8dfd218020621d1920923a1ab6f66f3b4ef6820bcb93791f2a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3490/magpie-cli-linux-arm64"
      sha256 "ca9b37f9047cf9aec2b98b328e21d6358e74cce2bcb5d249e7681ef603f25801"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3490/magpie-cli-linux-amd64"
      sha256 "30ec58732a8f7c2492d7ae0ea2b18b0bea604cb3a6f3d5253ddb82adcea18443"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
