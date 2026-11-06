cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3146"
  sha256 arm:   "ba7244cbd7494529db49e07339cef0ae77f41f859b932c171b6470d24a101550",
         intel: "c7f7eb8b42ba363d10e26606c47f3a3aa98e65b5e908746bc6ad7c4a66f5750a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
