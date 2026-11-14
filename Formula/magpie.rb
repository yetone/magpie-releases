class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4126/magpie-cli-darwin-arm64"
      sha256 "766208b9c851e2329694f003baa99719086fc0ff8c86b91588cde291f7d647b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4126/magpie-cli-darwin-amd64"
      sha256 "d42a0e765304bd07a5b1e47a7484774d7897fcf3363061c2b69c01aef1f45e66"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4126/magpie-cli-linux-arm64"
      sha256 "66d9819466b23aeb717cd6a2b4c889b8f80e40fbb02f5c22bd023d62d17d1bfb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4126/magpie-cli-linux-amd64"
      sha256 "d90c2bda7998c937c5bc5c1fe30e9d3cf6b79392060a9020e221ef9bed56600d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
