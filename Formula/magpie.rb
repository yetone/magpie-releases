class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1910/magpie-cli-darwin-arm64"
      sha256 "b2673e660705afc03b48ba045cce0ce434f44039edddf98e2f37a54834b460a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1910/magpie-cli-darwin-amd64"
      sha256 "8c44ec8d235da9a19b710caf7fd0ceb5a2f7e64dda33894253d487e3aac9bc73"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1910/magpie-cli-linux-arm64"
      sha256 "014894268d62dddd131da888927ed657d1fd7421fdb92d079b1c6d3924f316ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1910/magpie-cli-linux-amd64"
      sha256 "87a988091014f93f5b5e7f3a9320ba401eb1c3bbeb080c02cdfc05eab7ccf862"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
