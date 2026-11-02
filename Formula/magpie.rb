class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2755/magpie-cli-darwin-arm64"
      sha256 "ce098ce7c602a609591a66402e216bda52a9932a6c047a87887e8588d63c00d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2755/magpie-cli-darwin-amd64"
      sha256 "3c84e1e1afc9b703f81e94f181013269bba06a2f73505aab51f80cb355e932d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2755/magpie-cli-linux-arm64"
      sha256 "60cf9e45b0cda8d97d0e8823ccdd611dd573ed535746232fdb23331ac97fe8d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2755/magpie-cli-linux-amd64"
      sha256 "5491a4bba45bc171982087cd7e3ca73c9bff5e37c774e87efd3197126b46f90a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
