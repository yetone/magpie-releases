class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4447/magpie-cli-darwin-arm64"
      sha256 "2e239bc1700e7e019b568028d418d0235a7c8361f6f340d722aafa17481d2628"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4447/magpie-cli-darwin-amd64"
      sha256 "00f02f3ef7a092969f0929e1faea88eaf8beba1d1007d180a10aac6c6270454b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4447/magpie-cli-linux-arm64"
      sha256 "67385af082d58c7d88229e6a3cde07a107d3db6a960a748ee345644951bc12c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4447/magpie-cli-linux-amd64"
      sha256 "992b3c0ac2ecef59897876ed3884545ac086ab560fb17e3a8f3481182694ca71"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
