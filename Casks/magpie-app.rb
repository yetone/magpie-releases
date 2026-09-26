cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.140"
  sha256 arm:   "ac38e3f35252f6abd5c23564c91d131111e19b7679f6ec13212ef8461a2b9e13",
         intel: "c936b39fdd9a551aa51e52b5d18459e1b6c3b2d043b0075576da481e3fc62dbe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
