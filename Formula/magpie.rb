class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1094/magpie-cli-darwin-arm64"
      sha256 "517cda629f99f8093d61cba3bf3ce5bf4d8ceebfaa2183e45f26f0e3188922d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1094/magpie-cli-darwin-amd64"
      sha256 "c131747c0c3267185913228e74c24fea2f298d3da9bd01c8035f926c4a0978a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1094/magpie-cli-linux-arm64"
      sha256 "b61542537a557aef30683ee42501f4e1fdc7df40d90b49a0b1bb2e6ecc0ceba6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1094/magpie-cli-linux-amd64"
      sha256 "103c597b45da5b7f793fe657433d5dbc8bc2235a809a1466ff4ccaabda6300b4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
