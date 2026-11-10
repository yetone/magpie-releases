class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3613/magpie-cli-darwin-arm64"
      sha256 "7acfcaec0a8c3d766a3f708a432931145689182f46abd4dea2ad9dba63b93bd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3613/magpie-cli-darwin-amd64"
      sha256 "e1485724472b9c410e276f326e434a1c97c10ea6455238e2f157f3b7919aa932"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3613/magpie-cli-linux-arm64"
      sha256 "0aa90fad4c5d62ef6db98608879ce89a3731e49cb834a6a677976b1c54b6d429"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3613/magpie-cli-linux-amd64"
      sha256 "4a7575d34fbbb7c82c07d8b39c35993480462de1e6a28830688080f6662763e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
