cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2216"
  sha256 arm:   "8d051a246d47c8c8e0dd08967c09880f0c05c83f25b12dc473e67f24e326cdfe",
         intel: "167475a52d167a5bc7d6fccc974e4552933ec0e0139d55852a24df19303bc783"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
