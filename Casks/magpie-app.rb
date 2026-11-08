cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3351"
  sha256 arm:   "1cbbd737bbfa67b25407f18d3b7926bc5a7d73abda304c4c44a43e1101430fed",
         intel: "938378c6790c504ab56eb89c00f851f35b989529c92a7f85404a85c6b091c379"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
