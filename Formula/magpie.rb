class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2835/magpie-cli-darwin-arm64"
      sha256 "14dcff5b9dc4fc4e1ae8b5da545492ea61175cbaf9196ba3b8438789bacb542a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2835/magpie-cli-darwin-amd64"
      sha256 "5504b12659bd1010c9dc95f96a17fd1d3e517ba361c189ee497e7f0726a197db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2835/magpie-cli-linux-arm64"
      sha256 "51538a7f29fbd2535b79660c82fa0d2f5e78e1fbdfc63d36a4b0aab5642dbc83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2835/magpie-cli-linux-amd64"
      sha256 "bc8188d1674fec480049cc589fbf2a097fef5bb6eb958b88a9b2498d89a0da01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
