class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4358/magpie-cli-darwin-arm64"
      sha256 "295307d00cda0dfa37e21242da35944e57dd69ca2ab61fe898102020d87eeddd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4358/magpie-cli-darwin-amd64"
      sha256 "2d062dce6d068f769290e33593e6a99d6e287a6cf78062e4c5585d9ef4e3ca6c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4358/magpie-cli-linux-arm64"
      sha256 "a09e0c5b4de1a2023f46178783a0407242d86e0f7b143e14d38b9074e4c57367"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4358/magpie-cli-linux-amd64"
      sha256 "f9a87d759366d65f62bc72bef45e876cae421678e67769e8d09c0cc3bd2562e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
