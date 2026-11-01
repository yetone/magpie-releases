cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2654"
  sha256 arm:   "70fa1ffd590c1e94893de1f8fb60c72f91d9f5c7cde1d7d9c80484a6bd61e532",
         intel: "883bd468a3b15c15661e6df8eee7074a0fc0207465e31a1470aaec33839ea30b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
