cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3859"
  sha256 arm:   "392d91d5dc279922f9d34a176c0912cded572c88d76aa027ffe822cde80bf9eb",
         intel: "112c7425b48c0dc48a7005a272b8a892506ac2b153df627bf6d75255d2e2403b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
