cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2455"
  sha256 arm:   "43e001eb4ee7d8631aae125139004ecbb1dffb3e2eb6a97bcf8281edf55eca74",
         intel: "bd73d6d9ffe9944898d544a6477d11a18eff04b3e67010887380235ba492e62c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
