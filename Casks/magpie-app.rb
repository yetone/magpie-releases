cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3587"
  sha256 arm:   "140f4880e717d4081044b1d1d937207a38ea6d8299e9779f5f4edabc2381ae60",
         intel: "f12d0ec75bae23b8ad0f0bc3bdc5e8214d480ce390f9b05df42f5714b7f0a749"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
