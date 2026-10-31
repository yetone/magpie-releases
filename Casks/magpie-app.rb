cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2365"
  sha256 arm:   "433ccff53bfb9f508da66f25a732e98fa0e61ca7eebe630cc40205da0aece24d",
         intel: "e5957b97fd01a56ccd54f1163587f1e89a0518efb3e637a078aa1c800e8cb1a4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
