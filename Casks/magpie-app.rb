cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2000"
  sha256 arm:   "7369dc3d3f5d4a92309633e4f34361274e5092da051f48da9590aba947f81071",
         intel: "cf4dba69828b481e21312dfac9d392df74ed646fe98793ede209743ed9b70034"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
