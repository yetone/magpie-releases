class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4959/magpie-cli-darwin-arm64"
      sha256 "408286e1d6aa90bf046ecb23f25fc8b9bae03c616f63ca91e8117e4a5d665a48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4959/magpie-cli-darwin-amd64"
      sha256 "fe91c8ad89bbf861728ea3285c45a46a7c5f7836c5a948dbe6ffe08d1ccfa93d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4959/magpie-cli-linux-arm64"
      sha256 "e5271c254c5660afecfb7937d788643ce34d02feb537c1103ed804d3cf39b5d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4959/magpie-cli-linux-amd64"
      sha256 "2e4d6494abceba660eaad8d228018a0c53058581b03a03c49c054a853e8c4f5a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
