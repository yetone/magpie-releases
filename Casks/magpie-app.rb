cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2258"
  sha256 arm:   "18fc56cec7be9b1cfeb6dbd194206c8b52cd981e0e1f37971c9626667f904311",
         intel: "999aa504ed4c7fe176d7b2868f0f36f1af405affc1c7209a82efa91a26e266fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
