cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4951"
  sha256 arm:   "2b4a684a752362c0558e52714f4eed8ff03aed3017c236e008564e96b502b7ab",
         intel: "ce98dfecd13effa38fb56f82dbe88b218ef4ae7ee254e120d8bc3c64bf01b73f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
