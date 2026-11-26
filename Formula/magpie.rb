class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4850/magpie-cli-darwin-arm64"
      sha256 "03cd4cf30e3b629a7090044bcf8d1ef8af354611ff2221678b78bc5a14f7abfe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4850/magpie-cli-darwin-amd64"
      sha256 "59670b38c83c17a00fad93eea8fc8a9f9d3e182fe28f8189273adee19ed71037"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4850/magpie-cli-linux-arm64"
      sha256 "32b2e6778ad34ce2d644c2372cd71de741256bea3fa68cf5b349a6715d3f3b15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4850/magpie-cli-linux-amd64"
      sha256 "8ae6025d323a83af42acd4620dbb7d5e3d41d052634a23ec6f41d77dd902c2c3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
