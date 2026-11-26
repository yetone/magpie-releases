cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4874"
  sha256 arm:   "4ef008aee71bc61f24daa70b8da53056169fb97becce9d5b57ac213ee18b07de",
         intel: "926220e182ce168edc7dfdfee4e2a312f9aac2311e9041f8657b819f0fea33e9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
