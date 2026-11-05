cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3071"
  sha256 arm:   "b75fde84c93fa81f623ee5ccee08e0262bbe381a1b83e8b78e8b971da726efd5",
         intel: "e77944b52cf43a4ba9ae7cf7296a3ea744641620ea03e2394a46b29cc3afc805"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
