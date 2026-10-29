class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2089/magpie-cli-darwin-arm64"
      sha256 "f46ef981721f8c551a082b0a28e9c30434baddd0ae7f0a70f793d8d4529adf56"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2089/magpie-cli-darwin-amd64"
      sha256 "c4d4a47a19c4fb429d5efeb62965bd90711bccf3e1d20959694d766e071416b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2089/magpie-cli-linux-arm64"
      sha256 "e458d250108a83087cfdf5fd556fff475ad8bac983291920f89aec0a621ab775"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2089/magpie-cli-linux-amd64"
      sha256 "34d121a80187c5235c127d7c0ab607485cfe3ab167bf3646ff250cb4973c7117"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
