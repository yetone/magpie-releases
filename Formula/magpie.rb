class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4814/magpie-cli-darwin-arm64"
      sha256 "627a2e530ff3cf10783d3a3fe2475bfa37fda62c4863f0c82bbb325832fb4945"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4814/magpie-cli-darwin-amd64"
      sha256 "944caa0548542896450cdf123edcfdf30faf4e12bf607b37201a4cb524cd5213"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4814/magpie-cli-linux-arm64"
      sha256 "bd634f65b857cb1d109c34f66cc23757262cbbaefd9175116f488b9fd0377699"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4814/magpie-cli-linux-amd64"
      sha256 "746b150c2341b15eef7b279c172e8c0c8467c182eb54ca043e4c94e2b214fe59"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
