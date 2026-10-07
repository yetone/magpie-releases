cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1102"
  sha256 arm:   "0b1154b3b8d6f37de395025de644e23908e66bd3fd6980312eb1ff6bb860f9e0",
         intel: "2b254c7951168719ecadee3cb7bab14418ffaafd45094b8d32b572b28fc04408"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
