cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1045"
  sha256 arm:   "0603275b0b3406715b40358628034cff457d68f76f916c8e8c72b71262d0afda",
         intel: "c51929bc956690fd1688fa028263aa84fa2fd3818e614a120fe83f4f0798fbc0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
