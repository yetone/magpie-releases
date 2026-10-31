cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2312"
  sha256 arm:   "f983738fd65d0265f27f814db1305f6686b6e87ccc2143a8ea70c5ac682a9401",
         intel: "f2e012a5686f76f65d5fcc974d5fdde802a2003bc7a890167a59268384ffeb2a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
