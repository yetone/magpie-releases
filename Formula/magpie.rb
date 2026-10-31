class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2335/magpie-cli-darwin-arm64"
      sha256 "49f8dbd51e1a89fdd1e9fe64fd9d6399c387710a134d1fe2d7835bf9e472c2b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2335/magpie-cli-darwin-amd64"
      sha256 "37c19f855102cc8f363fab20840788dc3ab98382edbd258c35c3b203eec1c68f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2335/magpie-cli-linux-arm64"
      sha256 "a576813bf1d683fa38c28ff6fc33ede2052c27a46fb1e91d930ede8961041c9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2335/magpie-cli-linux-amd64"
      sha256 "d6fde0f12440751246c2c8e76a995240cb3dc91eff63fc2ec7b994fe50215937"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
